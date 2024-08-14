package com.distribuida.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dao.ProvedoresDAO;
import com.distribuida.entities.Provedores;

@Controller
@RequestMapping("/provedores")
public class ProvedoresController {

    @Autowired
    private ProvedoresDAO provedoresDAO;

    @GetMapping("/findAll")
    public String findAll(Model model) {
        // try {
            List<Provedores> provedores = provedoresDAO.findAll();
            model.addAttribute("provedores", provedores);
            return "listar-provedores";
        // } catch (Exception e) {
        //     e.printStackTrace();
        // }
    }

    @GetMapping("/findOne")
    public String findOne(@RequestParam("idProvedores") @Nullable Integer idProvedores,
                          @RequestParam("opcion") @Nullable Integer opcion,
                          Model model) {
        // try {
            if (idProvedores != null) {
                Provedores provedores = provedoresDAO.findOne(idProvedores);
                model.addAttribute("provedores", provedores);
            }
            if (opcion == 1) return "add-provedores";
            else return "del-provedores";
        // } catch (Exception e) {
        //     e.printStackTrace();
        // }
    }

    @PostMapping("/add")
    public String add(@RequestParam("idProvedores") @Nullable Integer idProvedores,
                      @RequestParam("nombre") @Nullable String nombre,
                      @RequestParam("direccion") @Nullable String direccion,
                      @RequestParam("telefono") @Nullable String telefono,
                      @RequestParam("email") @Nullable String email,
                      Model model) {
        // try {
            if (idProvedores == null) {
                Provedores provedores = new Provedores(0, nombre, direccion, telefono, email);
                provedoresDAO.add(provedores);
            } else {
                Provedores provedores = new Provedores(idProvedores, nombre, direccion, telefono, email);
                provedoresDAO.up(provedores);
            }
            return "redirect:/provedores/findAll";
        // } catch (Exception e) {
        //     e.printStackTrace();
        // }
    }

    @GetMapping("/del")
    public String del(@RequestParam("idProvedores") @Nullable Integer idProvedores) {
        // try {
            provedoresDAO.del(idProvedores);
            return "redirect:/provedores/findAll";
        // } catch (Exception e) {
        //     e.printStackTrace();
        // }
    }
}

