package examples;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class ExamplesTest {

    @Test
    void testParallel() {
        Results results = Runner.path(
            "/home/madhanagopal/Desktop/Automation/Karate/V3-Merchant-Signup-API/src/test/java/examples/ExistingEmail.feature",
        "/home/madhanagopal/Desktop/Automation/Karate/V3-Merchant-Signup-API/src/test/java/examples/NegativeScenario.feature",
        "/home/madhanagopal/Desktop/Automation/Karate/V3-Merchant-Signup-API/src/test/java/examples/MerchantCreate.feature",
        "/home/madhanagopal/Desktop/Automation/Karate/V3-Merchant-Signup-API/src/test/java/examples/BusinessDetail.feature",
        "/home/madhanagopal/Desktop/Automation/Karate/V3-Merchant-Signup-API/src/test/java/examples/updateBusiness.feature"
        )
                //.outputCucumberJson(true)
                .parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
