package com.azeredudu.gestion.banque.controllers;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.azeredudu.gestion.banque.entities.Compte;
import com.azeredudu.gestion.banque.entities.User;
import com.azeredudu.gestion.banque.metier.BanqueForm;
import com.azeredudu.gestion.banque.services.BanqueService;

@Controller
public class TransactionsController {
    @Autowired
    private BanqueService service;

    @RequestMapping( value = "/deposit" )
    public String doDeposit( Model model, Principal principal, BanqueForm bf ) {
        String name = principal.getName();
        List<Compte> comptes = service.getComptesByUser( name );

        if ( bf.getAction() != null ) {

            service.verser( bf.getMontant(), bf.getCodeCpte(), 1L );
        }

        model.addAttribute( "banqueForm", bf );
        model.addAttribute( "comptes", comptes );

        return "do-deposit";

    }

    @RequestMapping( value = "/withdrawal" )
    public String withdrawal( Model model, Principal principal, BanqueForm bf ) {
        String name = principal.getName();
        List<Compte> comptes = service.getComptesByUser( name );
        if ( bf.getAction() != null ) {
            service.retrait( bf.getMontant(), bf.getCodeCpte(), 1L );
        }
        model.addAttribute( "banqueForm", bf );
        model.addAttribute( "comptes", comptes );
        return "do-withdrawal";

    }

    @RequestMapping( value = "/transfer" )
    public String transfer( Model model, Principal principal, BanqueForm bf ) {
        String name = principal.getName();
        List<Compte> comptes = service.getComptesByUser( name );
        if ( bf.getAction() != null ) {

            service.virement( bf.getMontant(), bf.getCodeCpte(), bf.getCodeCpte2(), 1L );
        }
        model.addAttribute( "banqueForm", bf );
        model.addAttribute( "comptes", comptes );
        return "do-transfer";

    }

}
