package features.Parallel;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
public class ParallelRunner {
    @Test
    void testParallel() {
        Results results = Runner.path("classpath:features").parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
