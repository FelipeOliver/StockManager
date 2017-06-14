package com.stockmanager.controllers;

import java.util.List;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.stockmanager.entities.TipoEmbalagem;
import com.stockmanager.services.TipoEmbalagemService;

@RestController
@RequestMapping("/tipoembalagem")
public class TipoEmbalagemRestController {

	@Autowired
	private TipoEmbalagemService tipoEmbalagemService;
	
	@RequestMapping
	public ModelAndView categoriaCrud(){
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("content_import", "tipo-embalagem/tipo-embalagem-crud.jsp");
		return mv;	
	}	

	@RequestMapping(value="/", method=RequestMethod.POST)
	public ResponseEntity<String> save(@RequestBody TipoEmbalagem tipoEmbalagem){
		try {
			TipoEmbalagem saved = this.tipoEmbalagemService.save(tipoEmbalagem);
			return new ResponseEntity<String>(new ObjectMapper().writeValueAsString(saved), HttpStatus.OK);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@RequestMapping(value="/delete/{id}")
	public ResponseEntity<String> delete(@PathVariable("id") Long id){
		try {
			this.tipoEmbalagemService.delete(id);
			return new ResponseEntity<String>(HttpStatus.OK);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@RequestMapping("/findall")
	public ResponseEntity<String> findAll(){
		try {
			List<TipoEmbalagem> list = this.tipoEmbalagemService.findAll();
			return new ResponseEntity<String>(new ObjectMapper().writeValueAsString(list), HttpStatus.OK);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
}
