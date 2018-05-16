package org.apache.poi.xssf.usermodel.examples;

import java.io.File;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;

import org.apache.poi.ss.usermodel.Sheet;

import org.apache.poi.ss.usermodel.Workbook;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class ReadGuru99ExcelFile {

    

    public void readExcel(String filePath,String fileName,String sheetName) throws IOException{
    	HashMap<String,String> hm=new HashMap<String,String>();
    	String[] SeverityType= {"Module Name","Blocker","Critical","Major","Minor"};
    	String[] Module = {"FTP","Contracts"};
    //Create an object of File class to open xlsx file

    File file =    new File(filePath+"\\"+fileName);

    //Create an object of FileInputStream class to read excel file

    FileInputStream inputStream = new FileInputStream(file);

    Workbook guru99Workbook = null;

    //Find the file extension by splitting file name in substring  and getting only extension name

    String fileExtensionName = fileName.substring(fileName.indexOf("."));

    //Check condition if the file is xlsx file

    if(fileExtensionName.equals(".xlsx")){

    //If it is xlsx file then create object of XSSFWorkbook class

    guru99Workbook = new XSSFWorkbook(inputStream);

    }

    //Check condition if the file is xls file

    else if(fileExtensionName.equals(".xls")){

        //If it is xls file then create object of XSSFWorkbook class

        guru99Workbook = new HSSFWorkbook(inputStream);

    }

    //Read sheet inside the workbook by its name

    Sheet guru99Sheet = guru99Workbook.getSheet(sheetName);

    //Find number of rows in excel file

    int rowCount = guru99Sheet.getLastRowNum()-guru99Sheet.getFirstRowNum();
System.out.println(rowCount);
    //Create a loop over all the rows of excel file to read it

    for (int i = 1; i < rowCount+1; i++) {
        		Row row = guru99Sheet.getRow(i);
            	//Get Severity and ModuleName
        		String ModuleName=row.getCell(12).getStringCellValue();
        		for(String something:Module) 
        		{
        			String Severity=row.getCell(5).getStringCellValue();
        			int Severirtycount=0; 
        			for(String some:SeverityType)
						{
						Severirtycount++;
						}
        			System.out.println(something+Severirtycount);
        }

    	//Create pivot sheet
	    Sheet sheet1 = guru99Workbook.createSheet("pivot");
	    
	   //initialize the row zero
	    Row newRow = sheet1.createRow(0);
	    Row row1 = sheet1.getRow(0);
	    
	    //label the columns and rows
	    for(int j = 0; j < row1.getLastCellNum(); j++){
									Cell cell = newRow.createCell(j);
									if(cell.getRowIndex()==0) {
									        cell.setCellValue(SeverityType[j]);
									}
									if(cell.getColumnIndex()==0 && cell.getRowIndex()!=0) {
										cell.setCellValue(Module[j]);
											
										}
										
	    				}
    }

    }

  
    

    

    

    /*public void writeExcel(String filePath,String fileName,String sheetName,String[] dataToWrite) throws IOException{

        //Create an object of File class to open xlsx file

        File file =    new File(filePath+"\\"+fileName);

        //Create an object of FileInputStream class to read excel file

        FileInputStream inputStream = new FileInputStream(file);

        Workbook guru99Workbook = null;

        //Find the file extension by splitting  file name in substring and getting only extension name

        String fileExtensionName = fileName.substring(fileName.indexOf("."));

        //Check condition if the file is xlsx file

        if(fileExtensionName.equals(".xlsx")){

        //If it is xlsx file then create object of XSSFWorkbook class

        guru99Workbook = new XSSFWorkbook(inputStream);

        }

        //Check condition if the file is xls file

        else if(fileExtensionName.equals(".xls")){

            //If it is xls file then create object of XSSFWorkbook class

            guru99Workbook = new HSSFWorkbook(inputStream);

        }

        

    //Read excel sheet by sheet name    

    Sheet sheet = guru99Workbook.getSheet(sheetName);

    //Get the current count of rows in excel file

    int rowCount = sheet.getLastRowNum()-sheet.getFirstRowNum();

    //Get the first row from the sheet

    Row row = sheet.getRow(0);

    //Create a new row and append it at last of sheet

    Row newRow = sheet.createRow(rowCount+1);

    //Create a loop over the cell of newly created Row

    for(int j = 0; j < row.getLastCellNum(); j++){

        //Fill data in row

        Cell cell = newRow.createCell(j);

        cell.setCellValue(dataToWrite[j]);

    }

    //Close input stream

    inputStream.close();

    //Create an object of FileOutputStream class to create write data in excel file

    FileOutputStream outputStream = new FileOutputStream(file);

    //write data in the excel file

    guru99Workbook.write(outputStream);

    //close output stream

    outputStream.close();

    

    }

    

*/

    //Main function is calling readExcel function to read data from excel file

    public static void main(String...strings) throws IOException{

    //Create an object of ReadGuru99ExcelFile class

    ReadGuru99ExcelFile objExcelFile = new ReadGuru99ExcelFile();

    //Prepare the path of excel file

    String filePath = System.getProperty("user.dir")+"\\";

    //Call read file method of the class to read data

    objExcelFile.readExcel(filePath,"ooxml-pivottable.xlsx","sheet0");

    }

}