package patterns.delegation;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;

public class FilteringLogger implements ILogger{
	
	private ILogger logger;
	private Collection<String> severity;

	public FilteringLogger(ILogger logger, String... severity){
		this.severity = new ArrayList<String>(Arrays.asList(severity));

		this.logger = logger;
		
		
	}
	
	
	
	@Override
	public void log(String severity, String message, Exception exception) {
		if (isLogging(severity)){
			logger.log(severity,message,exception);
		}
	}
	
	
	public boolean isLogging(String severity){
		return this.severity.contains(severity);
	}
	
	
	public void setIsLogging(String severity, boolean value){
		if(this.severity.contains(severity)&& value==false){
			this.severity.remove(severity);
		}else{
			this.severity.add(severity);
		}
	}
}