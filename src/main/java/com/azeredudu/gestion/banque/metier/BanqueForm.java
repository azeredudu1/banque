package com.azeredudu.gestion.banque.metier;

public class BanqueForm {

    private Double montant;
    private Long   userId;
    private String codeCpte;
    private int    nbreLigne = 5;
    private int    nombrePages;
    private int    page      = 0;
    public int getPage() {
        return page;
    }

    public void setPage( int page ) {
        this.page = page;
    }

    public int getNbreLigne() {
        return nbreLigne;
    }

    public void setNbreLigne( int nbreLigne ) {
        this.nbreLigne = nbreLigne;
    }

    public int getNombrePages() {
        return nombrePages;
    }

    public void setNombrePages( int nombrePages ) {
        this.nombrePages = nombrePages;
    }

    private String action;
    private String codeCpte2;
    private String typeCompte;
    private double solde;
    private double decouvert;
    private double taux;
    private String currency;
    private String description;

    public Double getMontant() {
        return montant;
    }

    public void setMontant( Double montant ) {
        this.montant = montant;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId( Long userId ) {
        this.userId = userId;
    }

    public String getCodeCpte() {
        return codeCpte;
    }

    public void setCodeCpte( String codeCpte ) {
        this.codeCpte = codeCpte;
    }

    public String getAction() {
        return action;
    }

    public void setAction( String action ) {
        this.action = action;
    }

    public String getCodeCpte2() {
        return codeCpte2;
    }

    public void setCodeCpte2( String codeCpte2 ) {
        this.codeCpte2 = codeCpte2;
    }

    public String getTypeCompte() {
        return typeCompte;
    }

    public void setTypeCompte( String typeCompte ) {
        this.typeCompte = typeCompte;
    }

    public double getSolde() {
        return solde;
    }

    public void setSolde( double solde ) {
        this.solde = solde;
    }

    public double getDecouvert() {
        return decouvert;
    }

    public void setDecouvert( double decouvert ) {
        this.decouvert = decouvert;
    }

    public double getTaux() {
        return taux;
    }

    public void setTaux( double taux ) {
        this.taux = taux;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency( String currency ) {
        this.currency = currency;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription( String description ) {
        this.description = description;
    }

}
