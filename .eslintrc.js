module.exports = {
    "parser": "babel-eslint",
    "extends": "google",
    "rules": {
        "camelcase": [1, {
            "properties": "never"
        }],
        "curly": 0,
        "eol-last": 0,
        "indent": ["error", 4],
        "max-len": 0,
        "new-cap": 1,
        "no-console": 2,
        "no-extend-native": 0,
        "no-loop-func": 0,
        "no-unused-vars": 1,
        "no-var": 1,
        "prefer-const": 1,
        "require-jsdoc": 0
    }
};