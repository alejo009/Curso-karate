package features.getgorest;

import com.intuit.karate.junit5.Karate;

public class GetGoRestInRunner {
    @Karate.Test
    Karate TestGoRestIn(){
        return Karate.run("GetGoRestIn").relativeTo(getClass());
    }
}
