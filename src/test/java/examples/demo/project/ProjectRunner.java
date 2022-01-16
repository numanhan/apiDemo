package examples.demo.project;

import com.intuit.karate.junit5.Karate;

public class ProjectRunner {
    @Karate.Test
    Karate testUsers() {
        return Karate.run("project").relativeTo(getClass());
    }

}
