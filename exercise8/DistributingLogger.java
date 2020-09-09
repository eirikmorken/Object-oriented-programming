package patterns.delegation;



public class DistributingLogger implements ILogger{
	
	private ILogger errorLogger;
	private ILogger warningLogger;
	private ILogger infoLogger;

	public DistributingLogger(ILogger errorLogger, ILogger warningLogger, ILogger infoLogger){
		this.errorLogger = errorLogger;
		this.warningLogger = warningLogger;
		this.infoLogger = infoLogger;
		
	}

	@Override
	public void log(String severity, String message, Exception exception) {
		if(severity.equals(ERROR)){
			errorLogger.log(ERROR, message, exception);
		}
		else if(severity.equals(WARNING)){
			warningLogger.log(WARNING, message, exception);
		}
		else if(severity.equals(INFO)){
			infoLogger.log(INFO, message, exception);
		}
	}
	
	public void setLogger(String severity, ILogger logger){
		if (severity.equals(ERROR)){
			errorLogger = logger;
		}
		else if (severity.equals(WARNING)){
			warningLogger = logger;
		}
		else if (severity.equals(INFO)){
			infoLogger = logger;
		}
	}
}
