package patterns.delegation;


import java.io.OutputStream;
import java.io.PrintWriter;

public class StreamLogger implements ILogger{

	private OutputStream outputStream;
	private String formatString;
	
	public StreamLogger(OutputStream stream){
		this.formatString = "%s%s%E";
		this.outputStream = stream;
	}
	
	
	
	@Override
	public void log(String severity, String message, Exception exception) {
		PrintWriter writer = new PrintWriter(outputStream);
		writer.println(String.format(formatString,severity,message,exception));
		writer.close();
	}

	
	public void setFormatString(String formatstring){
		this.formatString = formatstring;
	}

}
