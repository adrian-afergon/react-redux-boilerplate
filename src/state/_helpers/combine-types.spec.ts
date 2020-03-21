import { SEPARATOR, combineTypes } from './combine-types';

describe('Combine Actions', () => {
  it('don\'t combine only one action', () => {
    const type = 'irrelevant type';
    expect(combineTypes(type)).toEqual(type);
  });

  it('combines multiple types', () => {
    const firstType = 'foo';
    const secondType = 'bar';
    const thirdType = 'bla';
    const expectedCombination = `${firstType}${SEPARATOR}${secondType}${SEPARATOR}${thirdType}`;

    expect(combineTypes(firstType, secondType, thirdType)).toEqual(expectedCombination);
  });
});
