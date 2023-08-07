class Education {
    //Multilevel Inheritance
    public void ug(){
        System.out.println("Education type is: UG");
    }
    public void pg() {
        System.out.println("Education type is: PG");
        System.out.println("\n");
    }
}
class Arts extends Education{
    public void Bsc(){
        System.out.println("Students are studying: Bsc");
    }
    public void ba(){
        System.out.println("Students are studying: BA");
        System.out.println("\n");
    }

}
class Engineering extends Arts{
    public void be(){
        System.out.println("Students are studying: BE");
    }
    public void btech(){
        System.out.println("Students are studying: BTech");
        System.out.println("\n");
    }
}
class Hostel extends Engineering{
    public void student(){
        System.out.println("Students are from all Department");
    }

    public static void main(String[] args) {
        Hostel h = new Hostel();
        h.ug();
        h.pg();
        h.Bsc();
        h.ba();
        h.be();
        h.btech();
        h.student();
    }
}

