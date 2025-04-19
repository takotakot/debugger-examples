import { sum_to_n } from './functions';

describe('sum_to_n', () => {
    test('should return 55 for input 10', () => {
        expect(sum_to_n(10)).toBe(55);
    });
});
