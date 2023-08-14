import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class Person implements Comparable<Person> {

    private String name;
    private int age;
    private int id;

    public Person(String name, int age, int id) {
        this.name= name;
        this.age = age;
        this.id = id;

    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    public int getId() {
        return id;
    }

    @Override
    public int compareTo(Person otherperson) {

        return Integer.compare(this.age, otherperson.age);
    }

    public String toString() {
        return "Person{" +
                "name='" + name + '\'' +
                ", age=" + age +  '\''+
                ", id=" + id +
                '}';
    }
}
class ComparatorExample implements Comparator<Person>{
    @Override
    public int compare(Person p1, Person p2) {
        return Integer.compare(p1.getId(), p2.getId());
    }
    public static void main(String[] args) {
        List<Person> persons = new ArrayList<>();
        persons.add(new Person("Prabha", 22 ,3));
        persons.add(new Person("Sabana", 20, 5));
        persons.add(new Person("Saraswathi", 23, 6));

        Collections.sort(persons);
        System.out.println("Sorted by age");
        System.out.println(persons);

        Collections.sort(persons, new ComparatorExample());
        System.out.println("Sorted by id");
        System.out.println(persons);

    }}
