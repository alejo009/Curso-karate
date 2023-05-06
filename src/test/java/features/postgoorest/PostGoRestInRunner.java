package features.postgoorest;

import com.intuit.karate.junit5.Karate;

public class PostGoRestInRunner {
    @Karate.Test

    Karate TestPostGoRest(){
        return Karate.run("postgorest").relativeTo(getClass());
    }
}