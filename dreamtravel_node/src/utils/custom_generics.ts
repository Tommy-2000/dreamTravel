
// Declare generic functions when handling specific types

// Type-safe generic
export function typeSafe<Type>(safe: Type):Type {
    return safe
}

// String-type generic
export function typeString(string: string): string {
    return string
}

// Number-type generic
export function typeNumber(number: number): number {
    return number
}

// Boolean-type generic
export function typeBoolean(boolean: boolean): boolean {
    return boolean
}

// Object-type generic
export function typeObject(object: object): object {
    return object
}

// Unknown-type generic
export function typeUnknown(unknown: unknown): unknown {
    return unknown
}

// String array-type generic
export function typeStringArray(stringArray: Array<string>): Array<string> {
    return stringArray
}

// Number array-type generic
export function typeNumberArray(numberArray: Array<number>): Array<number> {
    return numberArray
}

// Boolean array-type generic
export function typeBooleanArray(booleanArray: Array<boolean>): Array<boolean> {
    return booleanArray
}

// Object array-type generic
export function typeObjectArray(objectArray: Array<object>): Array<object> {
    return objectArray
}

// Unknown array-type generic
export function typeUnknownArray(unknownArray: Array<unknown>): Array<unknown> {
    return unknownArray
}


