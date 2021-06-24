type idMaker = () => string;

@module("nanoid")
external make: idMaker = "nanoid"

@module("nanoid/async")
external asyncMake: () => Js.Promise.t<string> = "nanoid"

@module("nanoid/non-secure")
external nonSecureIdMaker: () => idMaker = "nanoid"

@module("nanoid")
external customAlphabetIdMaker: (~alphabet: string, ~size: int) => idMaker = "customAlphabet"

@module("nanoid/async")
external asyncCustomAlphabetIdMaker: (~alphabet: string, ~size: int) => idMaker = "customAlphabet"

@module("nanoid/non-secure")
external nonSecureCustomAlphabetIdMaker: (~alphabet: string, ~size: int) => idMaker = "customAlphabet"

@module("nanoid")
external urlAlphabet: string = "urlAlphabet"

@module("nanoid")
external customRandom: (~alphabet: string, ~size: int, ~random: int => Js.TypedArray2.Uint8Array.t) => string = "customRandom"