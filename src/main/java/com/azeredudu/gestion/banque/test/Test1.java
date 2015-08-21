package com.azeredudu.gestion.banque.test;

import java.util.List;
import java.util.Random;
import java.util.UUID;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.azeredudu.gestion.banque.entities.Compte;
import com.azeredudu.gestion.banque.entities.Groupe;
import com.azeredudu.gestion.banque.entities.Operation;
import com.azeredudu.gestion.banque.services.BanqueService;

public class Test1 {

    public static void main( String[] args ) {
        // TODO Auto-generated method stub
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(
                new String[] { "spring-config.xml" } );
        BanqueService service = (BanqueService) context.getBean( "service" );
       List<Operation>list = service.ConsulterOperations( "6SUFVFIDTN62G", 0, 18 );
       for(Operation operation :list){
           System.out.println("***************");
           System.out.println("Type Op: "+operation);
           System.out.println("montant" +operation.getMontant());
       }
   
}}
