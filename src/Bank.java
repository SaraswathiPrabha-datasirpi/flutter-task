public interface Bank {
    abstract void savings();
    void deposit();
    void fixed();
    float rateOfInterest();
}
class NewBank implements Bank{
    @Override
    public void savings() {
        System.out.println("Savings: 4%");
    }

    @Override
    public void deposit() {
        System.out.println("Deposit: 5%");
    }

    @Override
    public void fixed() {
        System.out.println("Fixed: 7%");
    }

    @Override
    public float rateOfInterest() {
        return 9.08f;

    }

    public static void main(String[] args) {
        Bank b = new NewBank();
        b.savings();
        b.deposit();
        b.fixed();
        float interestRate = b.rateOfInterest();
        System.out.println("Rate of Interest: " + interestRate + "%");
    }
}