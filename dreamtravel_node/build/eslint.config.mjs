import globals from "globals";
import eslint from '@eslint/js';
import tseslint from "typescript-eslint";
import { globalIgnores } from "eslint/config";
export default tseslint.config([
    { files: ["**/*.{js,mjs,cjs,ts,mts,cts}"], languageOptions: { globals: globals.node } },
    tseslint.configs.recommended, // Set the lint to check recommended lint rules for TypeScript
    eslint.configs.recommended,
    globalIgnores(["output/**/*"], "Ignore JS Output Directory"), // Ignore the output folder containing JS
]);
