"use strict";
// Declare generic functions when handling specific types
Object.defineProperty(exports, "__esModule", { value: true });
exports.typeSafe = typeSafe;
exports.typeString = typeString;
exports.typeNumber = typeNumber;
exports.typeBoolean = typeBoolean;
exports.typeObject = typeObject;
exports.typeUnknown = typeUnknown;
exports.typeStringArray = typeStringArray;
exports.typeNumberArray = typeNumberArray;
exports.typeBooleanArray = typeBooleanArray;
exports.typeObjectArray = typeObjectArray;
exports.typeUnknownArray = typeUnknownArray;
// Type-safe generic
function typeSafe(safe) {
    return safe;
}
// String-type generic
function typeString(string) {
    return string;
}
// Number-type generic
function typeNumber(number) {
    return number;
}
// Boolean-type generic
function typeBoolean(boolean) {
    return boolean;
}
// Object-type generic
function typeObject(object) {
    return object;
}
// Unknown-type generic
function typeUnknown(unknown) {
    return unknown;
}
// String array-type generic
function typeStringArray(stringArray) {
    return stringArray;
}
// Number array-type generic
function typeNumberArray(numberArray) {
    return numberArray;
}
// Boolean array-type generic
function typeBooleanArray(booleanArray) {
    return booleanArray;
}
// Object array-type generic
function typeObjectArray(objectArray) {
    return objectArray;
}
// Unknown array-type generic
function typeUnknownArray(unknownArray) {
    return unknownArray;
}
