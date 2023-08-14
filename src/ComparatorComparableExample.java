import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class ComparatorComparableExample {
    public static void main(String[] args) {
        List<Person> persons = new ArrayList<>();
        persons.add(new Person("Alice", 25, 3));
        persons.add(new Person("Bob", 30, 3));
        persons.add(new Person("Charlie", 22, 3));

        // Using Comparable (natural ordering by age)
        System.out.println("Sorting using Comparable:");
        Collections.sort(persons);
        persons.forEach(System.out::println);

        System.out.println();

        // Using Comparator (sorting by name)
        System.out.println("Sorting using Comparator:");
        Comparator<Person> nameComparator = Comparator.comparing(Person::getName);
        Collections.sort(persons, nameComparator);
        persons.forEach(System.out::println);
    }
}
