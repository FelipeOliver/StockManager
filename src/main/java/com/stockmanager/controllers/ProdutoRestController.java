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

import com.stockmanager.entities.Produto;
import com.stockmanager.services.ProdutoService;

@RestController
@RequestMapping("/produto")
public class ProdutoRestController {

	@Autowired
	private ProdutoService produtoService;
	
	@RequestMapping
	public ModelAndView produto(){
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("content_import", "produto-add.jsp");
		return mv;
	}
	
	@RequestMapping(value="/", method=RequestMethod.POST)
	public ResponseEntity<String> save(@RequestBody Produto produto){
		try {
			System.out.println(produto.getCategoria().getId());
			System.out.println(produto.getTipoDeEmbalagem().getId());
			Produto saved = this.produtoService.save(produto);
			return new ResponseEntity<String>(new ObjectMapper().writeValueAsString(saved), HttpStatus.OK);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@RequestMapping(value="/delete/{id}")
	public ResponseEntity<String> delete(@PathVariable("id") Long id){
		try {
			this.produtoService.delete(id);
			return new ResponseEntity<String>(HttpStatus.OK);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@RequestMapping(value="/findall")
	public ResponseEntity<String> findAll(){
		try{
			List<Produto> list = this.produtoService.findAll();
			return new ResponseEntity<String>(new ObjectMapper().writeValueAsString(list ), HttpStatus.OK);
		}catch (Exception e) {
			return new ResponseEntity<String>( e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
}
