package com.azeredudu.gestion.banque.controllers;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.azeredudu.gestion.banque.entities.Compte;
import com.azeredudu.gestion.banque.entities.CompteCourant;
import com.azeredudu.gestion.banque.entities.CompteEpargne;
import com.azeredudu.gestion.banque.metier.BanqueForm;
import com.azeredudu.gestion.banque.services.BanqueService;

@Controller
@RequestMapping( "/createAccount" )
public class NewAccount {
    @Autowired
    private BanqueService service;

    @RequestMapping
    public String showdoCreateForm( BanqueForm bf, Model model ) {
        model.addAttribute( "banqueForm", bf );
        return "create-account";
    }

    @RequestMapping( method = RequestMethod.POST )
    public String doCreateAccount( BanqueForm bf, Model model,
            RedirectAttributes redirectAttributes ) {
        if ( bf.getAction() != null ) {
            service.addCompte(
                    new CompteCourant( new Date(), bf.getSolde(), bf.getCurrency(), bf.getDescription(), bf
                            .getDecouvert() ),3L );

        }
        model.addAttribute( "banqueForm", bf );
        redirectAttributes.addFlashAttribute( "success", true );

        return "redirect:/createAccount";

    }
}
