package services.wsdlversion;

import org.junit.runner.RunWith;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;

@RunWith(Karate.class)
@KarateOptions(features = "classpath:services/wsdlversion/API_GetWsdlVersion.feature")
public class SingleRunnerGetWSDL {

}
