import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class Collectionn {
    public static void main(String[] args) {
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

        int size = li.size();
        System.out.println("No of length: "+ size);

        System.out.println("Integer in the 5th position :"+li.get(5));

        li.set(6,100);
        System.out.println(li);

        li.remove(8);
        System.out.println(li);

        boolean e = li.isEmpty();
        System.out.println(e);

        ArrayList<Integer> li2 = new ArrayList<Integer>();
        li2.add(2);
        li2.add(5);
        li2.add(100);
        li2.add(null);

        li.retainAll(li2);
        System.out.println("Retain the elements from list1 to list2:"+ li);

        boolean c = li2.contains(5);
        System.out.println("Contains the element: "+c);

        ArrayList<Integer> li3 = new ArrayList<Integer>();
        li2.add(55);
        li2.add(19);
        li2.add(75);
        li2.add(null);

        li2.addAll(li3);
        System.out.println("Updated List from list2 to list3:" + li2);

        li3.clear();
        System.out.println(li3);

    }
}

class Linkedlisst {
    public static void main(String[] args) {
        List<String> list = new LinkedList<String>();
        list.add("Prabha");
        list.add("Sabana");
        list.add("Thiru");
        System.out.println("Linked List");
        System.out.println("==============");
        System.out.println(list);

        int size = list.size();
        System.out.println("No of length: "+ size);

        System.out.println("Integer in the 3th position :"+list.get(2));

    }
}

class vector{
    public static void main(String[] args) {
        List<String> v = new LinkedList<String>();

        v.add("Thiru");
        v.add("Prabha");
        v.add("Sabana");
        System.out.println("Vector list");
        System.out.println("==============");
        System.out.println(v);

        int size = v.size();
        System.out.println("No of length: "+ size);

    }
}

