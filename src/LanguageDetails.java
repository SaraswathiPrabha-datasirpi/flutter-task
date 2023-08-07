public class LanguageDetails {
    //Single Inheritance
    public void tamilLanguage(){
        System.out.println("Language is : Tamil");
    }
    public void englishLanguage(){
        System.out.println("Language is : English");
    }
    public void hindiLanguage(){
        System.out.println("Language is: Hindi");
    }
}

class StateDetails extends LanguageDetails{
    private void southIndia(){
        System.out.println("State is: SouthIndia");
    }
    private void northIndia(){
        System.out.println("State is: NorthIndia");
    }

    public static void main(String[] args) {
        StateDetails sd = new StateDetails();
        sd.tamilLanguage();
        sd.englishLanguage();
        sd.hindiLanguage();
        sd.southIndia();
        sd.northIndia();
    }
}
