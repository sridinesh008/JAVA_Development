package readthedoc;

import java.io.File;

import net.sourceforge.tess4j.ITesseract;
import net.sourceforge.tess4j.Tesseract;
import net.sourceforge.tess4j.TesseractException;

public class readTextFromPngOrJPG {
	
	 public static void main(String[] args) {
	        File imageFile = new File("image_1.png");
	        ITesseract instance = new Tesseract();  
	        instance.setDatapath("D:\\Development_testing\\PDF_Img_Reader\\Tess4J-3.4.3-src\\Tess4J");
// JNA Interface Mapping
	        // ITesseract instance = new Tesseract1(); // JNA Direct Mapping

	        try {
	            String result = instance.doOCR(imageFile);
	            System.out.println(result);
	        } catch (TesseractException e) {
	            System.err.println(e.getMessage());
	        }
	    }

}
