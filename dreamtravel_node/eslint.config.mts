import globals from "globals";
import eslint from '@eslint/js';
import tseslint from "typescript-eslint";

export default tseslint.config([
  { files: ["**/*.{js,mjs,cjs,ts,mts,cts}"], languageOptions: { globals: globals.node } },
  tseslint.configs.recommended,
  eslint.configs.recommended,
]);
