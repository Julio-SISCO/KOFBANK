// enum on met les variables en maj pour ne pas qu'il le prenne en constante
enum TypeCompte{
    EPARGNE,
    COURANT
}
class Compte{
    String numcpt;
    double solde;
    DateTime datecrea;
    TypeCompte type;

    // constructeur
    Compte(this.numcpt,this.solde,this.datecrea,this.type);

    faireDepot(double montant){
        this.solde+=montant;
        print('Dépôt de $montant effectué.');
        print('votre solde est de : ' + solde.toString());

    }

    faireRetrait(double montant){
        if(this.solde>= montant){
            this.solde-=montant;
            return true;

        }
        return false;

    }

    faireTransfert(Compte destinataire,double montant){
        if(this.faireRetrait(montant)){
            destinataire.faireDepot(montant);
            return true;

        }
        return false;


    }

}



