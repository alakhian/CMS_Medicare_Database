package medicare;


import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;
import java.util.StringTokenizer;

public class FilterHCPCS {
	
	public static final String FACILITY = "F";
	public static final String NON_FACILITY = "O";

	//Change input path here!!!!!!!!
	public static final String INPUT_PATH = 
			"C:\\Users\\Amar\\Desktop\\Spring 2015\\Research\\java\\medicare\\hcpcs_codes.txt";
	//Change output path here!!!!!!!!
	public static final String OUTPUT_PATH = 
			"C:\\Users\\Amar\\Desktop\\Spring 2015\\Research\\java\\medicare\\hcpcs_filter.txt";
	
	
	public static void parseNonFacility (Scanner input, FileWriter output) throws IOException {
		StringTokenizer lineTokens;
		String placeOfService;
		while (input.hasNextLine()) {
			lineTokens = new StringTokenizer(input.nextLine());
			if (lineTokens.hasMoreTokens()) placeOfService = lineTokens.nextToken();
			else break;
			if (!placeOfService.equals(NON_FACILITY)) {
				break;
			}
			output.write(",'" + lineTokens.nextToken() + "'");
		}
		output.write("))");
	}
	
	public static void parseFacility (Scanner input, FileWriter output) throws IOException {
		StringTokenizer lineTokens;
		String placeOfService;
		while (input.hasNextLine()) {
			lineTokens = new StringTokenizer(input.nextLine());
			if (lineTokens.hasMoreTokens()) placeOfService = lineTokens.nextToken();
			else break;
			if (placeOfService.equals(NON_FACILITY)) {
				output.write(")) or (\"PLACE_OF_SERVICE\" = 'O' and \"HCPCS_CODE\" in ('"
						+ lineTokens.nextToken() + "'");
				break;
			}
			output.write(",'" + lineTokens.nextToken() + "'");
		}
		if (input.hasNextLine()) {
			parseNonFacility (input, output);
		}
		else output.write("))");
	}
	
	public static void parseSQLResults (Scanner input, FileWriter output) throws IOException {
		StringTokenizer lineTokens = new StringTokenizer(input.nextLine());
		String placeOfService;
		if (lineTokens.hasMoreTokens()) placeOfService = lineTokens.nextToken();
		else return;
		if (placeOfService.equals(FACILITY)) {
			output.write("(\"PLACE_OF_SERVICE\" = 'F' and \"HCPCS_CODE\" in ('" 
					+ lineTokens.nextToken() + "'");
			parseFacility (input, output);
			
		}
		else if (placeOfService.equals(NON_FACILITY)) {
			output.write("(\"PLACE_OF_SERVICE\" = 'O' and \"HCPCS_CODE\" in ('" 
					+ lineTokens.nextToken() + "'");
			parseNonFacility (input, output);
		}
		
	}
	
	public static void main (String[] args) throws IOException {
		File inFile = new File(INPUT_PATH);
		Scanner input = new Scanner(inFile);
		File outFile = new File(OUTPUT_PATH);
		FileWriter output = new FileWriter(outFile);
		
		if (input.hasNextLine()) input.nextLine(); //skip the column headers
		if (input.hasNextLine()) input.nextLine();
		
		if (input.hasNextLine()) parseSQLResults(input, output);
		input.close();
		output.close();
		
	}

}
