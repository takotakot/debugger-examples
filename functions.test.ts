import { describe, test, expect } from 'vitest';
import { sum_to_n, bubble_sort, fibonacci } from './functions';

describe('sum_to_n', () => {
    test('should return 55 for input 10', () => {
        expect(sum_to_n(10)).toBe(55);
    });
});

describe('bubble_sort', () => {
    test('should sort the array [5, 3, 8, 1, 2] to [1, 2, 3, 5, 8]', () => {
        expect(bubble_sort([5, 3, 8, 1, 2])).toEqual([1, 2, 3, 5, 8]);
    });
});

describe('fibonacci', () => {
    test('should return 21 for input 8', () => {
        expect(fibonacci(8)).toBe(21);
    });
});
