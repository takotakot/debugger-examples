package com.example;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class AppTest {

    @Test
    public void testSumToN() {
        int result = App.sum_to_n(10);
        assertEquals(55, result, "The sum_to_n function should return 55 for input 10");
    }
}
