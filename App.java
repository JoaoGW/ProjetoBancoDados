
/**
 * Escreva uma descrição da classe App aqui.
 * 
 * @author (seu nome) 
 * @version (um número da versão ou uma data)
 */
public class App
{
    public static void main(String args[]){
        try{
            Database db = new Database(args[0]);
            db.gravarDadosDB("ra54321", "Maria da Conceição Filho", 26);
        }catch (Exception e){
            System.out.println("Falha no BD:" + e.getMessage());
        }
    }
}