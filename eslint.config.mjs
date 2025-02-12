import pluginJs from "@eslint/js";
import tseslint from "typescript-eslint";

/** @type {import('eslint').Linter.Config[]} */
export default [
    { files: ["**/*.{ts,tbaf}"] },
    pluginJs.configs.recommended,
    ...tseslint.configs.recommended,
    {
        rules: {
            "no-unused-vars": "error",
            "no-undef": "error",
        },
    },
    {
        ignores: ["_tmp.tbaf.ts"],
    },
];
