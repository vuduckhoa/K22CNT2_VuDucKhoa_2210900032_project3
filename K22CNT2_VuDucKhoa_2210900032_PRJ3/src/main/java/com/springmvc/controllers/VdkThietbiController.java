package com.springmvc.controllers;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.beans.Vdk_thietbi;
import com.springmvc.dao.Vdk_thietbidao;

@Controller
@RequestMapping("/thietbi")
public class VdkThietbiController {

    @Autowired
    private Vdk_thietbidao thietbiDao;

    @GetMapping("/list")
    public String viewThietBi(Model model) {
        List<Vdk_thietbi> list = thietbiDao.getAllThietBi();
        model.addAttribute("list", list);
        return "thietbi/list";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("command", new Vdk_thietbi());
        return "thietbi/add";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute("thietbi") Vdk_thietbi thietbi) {
        thietbiDao.save(thietbi);
        return "redirect:/thietbi/list";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable int id, Model model) {
        Vdk_thietbi thietbi = thietbiDao.getThietBiById(id);
        model.addAttribute("command", thietbi);
        return "thietbi/edit";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute("thietbi") Vdk_thietbi thietbi) {
        thietbiDao.update(thietbi);
        return "redirect:/thietbi/list";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable int id) {
        thietbiDao.delete(id);
        return "redirect:/thietbi/list";
    }
}
