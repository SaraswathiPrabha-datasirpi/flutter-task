import java.util.*;

public class CollectionMap {
    public static void main(String[] args) {

        //HashMap
        Map<Integer,String> m = new HashMap<>();
        m.put(1,"Cat");
        m.put(2,"Dog");
        m.put(3,"Lion");
        m.put(4,"Tiger");
        m.put(5, "Elephant");
        m.put(5, "Dog");
        System.out.println("Elements in Map:"+ m);

        System.out.println("No of length:"+ m.size());

        System.out.println("Get the element:" + m.get(4));

        System.out.println("Contains Key:"+ m.containsKey(9));

        System.out.println("Contains Value:"+ m.containsValue("Lion"));

        Set<Integer> k = m.keySet();
        System.out.println("Fetch only keys:"+ k);

        Collection<String> cs = m.values();
        System.out.println("Fetch only values:" + cs);


    }
}

class MapTree {
    public static void main(String[] args) {
        Map <String, Integer> si = new TreeMap<>();
        si.put("Prabha", 1);
        si.put("Saraswathi",2);
        si.put("Selvi",3);


        System.out.println("Elements are:" + si);

        Map<String, Integer> ms = new TreeMap<>();
        ms.putAll(si);
        System.out.println("New elements are:"+ ms);
    }
}
class MapLinkedHash{
    public static void main(String[] args) {
        Map<String, String> ss = new LinkedHashMap<>();
        ss.put("One", "Prabha");
        ss.put("One","Ratha");
        ss.put("Two", "Saraswathi");
        ss.put("Three", "Selvi");
        System.out.println("Elements are:"+ss);

        Set<String> sp = ss.keySet();
        System.out.println(sp);
    }
}