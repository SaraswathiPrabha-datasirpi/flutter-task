import java.io.*;

//File Input Stream
public class Note {
    public static void main(String[] args) {
        
        //File
        File f = new File("newfile.txt");
        boolean cr= f.canRead();
        System.out.println(cr);
        boolean cw= f.canWrite();
        System.out.println(cw);
        try {
            FileInputStream input = new FileInputStream(f);
            int data;
            while ((data = input.read()) != -1) {
                System.out.print((char) data);
            }
            input.close();
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }
}
//File output stream
class Output {
    public static void main(String[] args) {
        File f = new File("newfile.txt");
        try{
            FileOutputStream output = new FileOutputStream(f);
           String str = "File Output Stream";
           byte b[]= str.getBytes();
            output.write(b);
            output.write(75);
            output.close();
            System.out.println("Successfully written in the file");
        }
        catch (Exception e){
            System.out.println(e);
        }
    }
}
//
class ByteExample {
    public static void main(String[] args) {
        try (FileInputStream inputStream = new FileInputStream("source.txt");
             FileOutputStream outputStream = new FileOutputStream("desti.txt"))
        {

            int byteRead;
            while ((byteRead = inputStream.read()) != -1) {
                outputStream.write(byteRead);
            }

            System.out.println("File copied successfully.");
            inputStream.close();
            outputStream.close();

        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }
}






