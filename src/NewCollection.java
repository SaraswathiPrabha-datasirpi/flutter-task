import java.util.*;

public class NewCollection {
    public static void main(String[] args) {
        //List(Without Generics)
        List l = new ArrayList<>();
        l.add(30);
        l.add("Prabha");
        l.add(44.5f);
        l.add(true);
        l.add(986532429824l);
        System.out.println("Elements are in list"+l);

        int s = l.size();
        System.out.println("No of Length:" + s);

        Object g = l.get(2);
        System.out.println("Get the 3rd index value:" + g);

        //Set
        Set<Integer> ls = new LinkedHashSet<>();//prints Insertion order
        ls.add(70);
        ls.add(90);
        ls.add(20);
        ls.add(10);
        ls.add(20);
        ls.add(50);
        ls.add(80);
        ls.add(40);
        ls.add(30);
        ls.add(80);
        System.out.println("Elements are in Set"+ls);
        System.out.println("No of length:" + ls.size());

        //Map
        Map<String, String> ss = new LinkedHashMap<>();
        ss.put("One", "Prabha");
        ss.put("One","Ratha");
        ss.put("Two", "Saraswathi");
        ss.put("Three", "Selvi");
        System.out.println("Elements are in Map:"+ss);

    }
}
