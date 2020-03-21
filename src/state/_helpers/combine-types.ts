export const SEPARATOR = '||';
export const combineTypes = (...actionTypes: string[]) => actionTypes.join(SEPARATOR).toString();
