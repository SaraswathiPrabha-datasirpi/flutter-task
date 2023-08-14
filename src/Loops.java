import java.util.*;
import java.util.Map.Entry;

public class Loops {

    public static void main(String[] args) {

        //List
        List<Integer> li = new ArrayList<Integer>();
        li.add(10);
        li.add(20);
        li.add(30);
        li.add(10);
        li.add(40);
        li.add(null);
        li.add(20);
        li.add(50);
        li.add(88);
        System.out.println("Array Lists: "+li);

        System.out.println("\n Normal Loop:");
        System.out.println("==================");

        for (int i =0; i< li.size(); i++){
            Integer a = li.get(i);
            System.out.println(a);
        }

        System.out.println("\n Enhanced loop:");
        System.out.println("==================");

        for (Integer b: li) {
            System.out.println(b);
        }
    }
}

class MapLoop{
    public static void main(String[] args) {

        //Map
        Map<Integer,String> m = new HashMap<>();
        m.put(1,"Cat");
        m.put(2,"Dog");
        m.put(3,"Lion");
        m.put(4,"Tiger");
        m.put(5, "Elephant");
        m.put(5, "Dog");

        Set<Entry<Integer,String>> en = m.entrySet();
        System.out.println("Iterate the map:"+ en);

        System.out.println("\n Enhanced Loops:");
        System.out.println("=================");
        System.out.println("Fetching only Key using loops:");
        System.out.println("------------------------------");
        for (Entry<Integer, String> e: en)
        {
            Integer key = e.getKey();
            System.out.println("Key:"+key);
        }

        System.out.println("Fetching only Value using loops:");
        System.out.println("------------------------------");
        for (Entry<Integer, String> entry: en)
        {
            String value = entry.getValue();
            System.out.println("Value:"+value);
        }
    }
}
