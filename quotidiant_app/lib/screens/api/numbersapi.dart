class numbersapi {
  Success? success;
  Copyright? copyright;
  Contents? contents;

  numbersapi({this.success, this.copyright, this.contents});

  numbersapi.fromJson(Map<String, dynamic> json) {
    success =
        json['success'] != null ? new Success.fromJson(json['success']) : null;
    copyright = json['copyright'] != null
        ? new Copyright.fromJson(json['copyright'])
        : null;
    contents = json['contents'] != null
        ? new Contents.fromJson(json['contents'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.success != null) {
      data['success'] = this.success!.toJson();
    }
    if (this.copyright != null) {
      data['copyright'] = this.copyright!.toJson();
    }
    if (this.contents != null) {
      data['contents'] = this.contents!.toJson();
    }
    return data;
  }
}

class Success {
  int? total;

  Success({this.total});

  Success.fromJson(Map<String, dynamic> json) {
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    return data;
  }
}

class Copyright {
  String? copyright;

  Copyright({this.copyright});

  Copyright.fromJson(Map<String, dynamic> json) {
    copyright = json['copyright'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['copyright'] = this.copyright;
    return data;
  }
}

class Contents {
  Nod? nod;

  Contents({this.nod});

  Contents.fromJson(Map<String, dynamic> json) {
    nod = json['nod'] != null ? new Nod.fromJson(json['nod']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.nod != null) {
      data['nod'] = this.nod!.toJson();
    }
    return data;
  }
}

class Nod {
  Category? category;
  Numbers? numbers;

  Nod({this.category, this.numbers});

  Nod.fromJson(Map<String, dynamic> json) {
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    numbers =
        json['numbers'] != null ? new Numbers.fromJson(json['numbers']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    if (this.numbers != null) {
      data['numbers'] = this.numbers!.toJson();
    }
    return data;
  }
}

class Category {
  String? name;
  String? description;
  String? background;

  Category({this.name, this.description, this.background});

  Category.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    background = json['background'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['background'] = this.background;
    return data;
  }
}

class Numbers {
  String? number;
  String? uuid;
  String? id;
  Names? names;
  Bases? bases;
  Numerals? numerals;
  GeneralFacts? generalFacts;
  PrimeFacts? primeFacts;
  Recreational? recreational;
  String? category;

  Numbers(
      {this.number,
      this.uuid,
      this.id,
      this.names,
      this.bases,
      this.numerals,
      this.generalFacts,
      this.primeFacts,
      this.recreational,
      this.category});

  Numbers.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    uuid = json['uuid'];
    id = json['id'];
    names = json['names'] != null ? new Names.fromJson(json['names']) : null;
    bases = json['bases'] != null ? new Bases.fromJson(json['bases']) : null;
    numerals = json['numerals'] != null
        ? new Numerals.fromJson(json['numerals'])
        : null;
    generalFacts = json['general-facts'] != null
        ? new GeneralFacts.fromJson(json['general-facts'])
        : null;
    primeFacts = json['prime-facts'] != null
        ? new PrimeFacts.fromJson(json['prime-facts'])
        : null;
    recreational = json['recreational'] != null
        ? new Recreational.fromJson(json['recreational'])
        : null;
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['uuid'] = this.uuid;
    data['id'] = this.id;
    if (this.names != null) {
      data['names'] = this.names!.toJson();
    }
    if (this.bases != null) {
      data['bases'] = this.bases!.toJson();
    }
    if (this.numerals != null) {
      data['numerals'] = this.numerals!.toJson();
    }
    if (this.generalFacts != null) {
      data['general-facts'] = this.generalFacts!.toJson();
    }
    if (this.primeFacts != null) {
      data['prime-facts'] = this.primeFacts!.toJson();
    }
    if (this.recreational != null) {
      data['recreational'] = this.recreational!.toJson();
    }
    data['category'] = this.category;
    return data;
  }
}

class Names {
  Nominal? nominal;
  Nominal? cardinal;
  Nominal? ordinal;
  Nominal? usCurrency;

  Names({this.nominal, this.cardinal, this.ordinal, this.usCurrency});

  Names.fromJson(Map<String, dynamic> json) {
    nominal =
        json['nominal'] != null ? new Nominal.fromJson(json['nominal']) : null;
    cardinal = json['cardinal'] != null
        ? new Nominal.fromJson(json['cardinal'])
        : null;
    ordinal =
        json['ordinal'] != null ? new Nominal.fromJson(json['ordinal']) : null;
    usCurrency = json['us_currency'] != null
        ? new Nominal.fromJson(json['us_currency'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.nominal != null) {
      data['nominal'] = this.nominal!.toJson();
    }
    if (this.cardinal != null) {
      data['cardinal'] = this.cardinal!.toJson();
    }
    if (this.ordinal != null) {
      data['ordinal'] = this.ordinal!.toJson();
    }
    if (this.usCurrency != null) {
      data['us_currency'] = this.usCurrency!.toJson();
    }
    return data;
  }
}

class Nominal {
  String? name;
  String? description;
  String? value;
  String? display;

  Nominal({this.name, this.description, this.value, this.display});

  Nominal.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    value = json['value'];
    display = json['display'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['value'] = this.value;
    data['display'] = this.display;
    return data;
  }
}

class Bases {
  Nominal? binary;
  Nominal? ternary;
  Nominal? quaternary;
  Nominal? quinary;
  Nominal? senary;
  Nominal? octal;
  Nominal? duodecimal;
  Nominal? hexadecimal;
  Nominal? vigesimal;

  Bases(
      {this.binary,
      this.ternary,
      this.quaternary,
      this.quinary,
      this.senary,
      this.octal,
      this.duodecimal,
      this.hexadecimal,
      this.vigesimal});

  Bases.fromJson(Map<String, dynamic> json) {
    binary =
        json['binary'] != null ? new Nominal.fromJson(json['binary']) : null;
    ternary =
        json['ternary'] != null ? new Nominal.fromJson(json['ternary']) : null;
    quaternary = json['quaternary'] != null
        ? new Nominal.fromJson(json['quaternary'])
        : null;
    quinary =
        json['quinary'] != null ? new Nominal.fromJson(json['quinary']) : null;
    senary =
        json['senary'] != null ? new Nominal.fromJson(json['senary']) : null;
    octal = json['octal'] != null ? new Nominal.fromJson(json['octal']) : null;
    duodecimal = json['duodecimal'] != null
        ? new Nominal.fromJson(json['duodecimal'])
        : null;
    hexadecimal = json['hexadecimal'] != null
        ? new Nominal.fromJson(json['hexadecimal'])
        : null;
    vigesimal = json['vigesimal'] != null
        ? new Nominal.fromJson(json['vigesimal'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.binary != null) {
      data['binary'] = this.binary!.toJson();
    }
    if (this.ternary != null) {
      data['ternary'] = this.ternary!.toJson();
    }
    if (this.quaternary != null) {
      data['quaternary'] = this.quaternary!.toJson();
    }
    if (this.quinary != null) {
      data['quinary'] = this.quinary!.toJson();
    }
    if (this.senary != null) {
      data['senary'] = this.senary!.toJson();
    }
    if (this.octal != null) {
      data['octal'] = this.octal!.toJson();
    }
    if (this.duodecimal != null) {
      data['duodecimal'] = this.duodecimal!.toJson();
    }
    if (this.hexadecimal != null) {
      data['hexadecimal'] = this.hexadecimal!.toJson();
    }
    if (this.vigesimal != null) {
      data['vigesimal'] = this.vigesimal!.toJson();
    }
    return data;
  }
}

class Numerals {
  Nominal? roman;
  Nominal? chinese;
  Nominal? egyptian;
  Nominal? babylonian;

  Numerals({this.roman, this.chinese, this.egyptian, this.babylonian});

  Numerals.fromJson(Map<String, dynamic> json) {
    roman = json['roman'] != null ? new Nominal.fromJson(json['roman']) : null;
    chinese =
        json['chinese'] != null ? new Nominal.fromJson(json['chinese']) : null;
    egyptian = json['egyptian'] != null
        ? new Nominal.fromJson(json['egyptian'])
        : null;
    babylonian = json['babylonian'] != null
        ? new Nominal.fromJson(json['babylonian'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.roman != null) {
      data['roman'] = this.roman!.toJson();
    }
    if (this.chinese != null) {
      data['chinese'] = this.chinese!.toJson();
    }
    if (this.egyptian != null) {
      data['egyptian'] = this.egyptian!.toJson();
    }
    if (this.babylonian != null) {
      data['babylonian'] = this.babylonian!.toJson();
    }
    return data;
  }
}

class GeneralFacts {
  Odd? odd;
  Odd? even;
  Odd? palindrome;
  Odd? triangle;

  GeneralFacts({this.odd, this.even, this.palindrome, this.triangle});

  GeneralFacts.fromJson(Map<String, dynamic> json) {
    odd = json['odd'] != null ? new Odd.fromJson(json['odd']) : null;
    even = json['even'] != null ? new Odd.fromJson(json['even']) : null;
    palindrome = json['palindrome'] != null
        ? new Odd.fromJson(json['palindrome'])
        : null;
    triangle =
        json['triangle'] != null ? new Odd.fromJson(json['triangle']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.odd != null) {
      data['odd'] = this.odd!.toJson();
    }
    if (this.even != null) {
      data['even'] = this.even!.toJson();
    }
    if (this.palindrome != null) {
      data['palindrome'] = this.palindrome!.toJson();
    }
    if (this.triangle != null) {
      data['triangle'] = this.triangle!.toJson();
    }
    return data;
  }
}

class Odd {
  String? name;
  String? description;
  bool? value;
  String? display;

  Odd({this.name, this.description, this.value, this.display});

  Odd.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    value = json['value'];
    display = json['display'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['value'] = this.value;
    data['display'] = this.display;
    return data;
  }
}

class PrimeFacts {
  Odd? prime;
  Odd? perfect;
  Odd? mersenne;
  Odd? fermat;
  Odd? fibonacci;
  Odd? partition;
  Odd? pell;

  PrimeFacts(
      {this.prime,
      this.perfect,
      this.mersenne,
      this.fermat,
      this.fibonacci,
      this.partition,
      this.pell});

  PrimeFacts.fromJson(Map<String, dynamic> json) {
    prime = json['prime'] != null ? new Odd.fromJson(json['prime']) : null;
    perfect =
        json['perfect'] != null ? new Odd.fromJson(json['perfect']) : null;
    mersenne =
        json['mersenne'] != null ? new Odd.fromJson(json['mersenne']) : null;
    fermat = json['fermat'] != null ? new Odd.fromJson(json['fermat']) : null;
    fibonacci =
        json['fibonacci'] != null ? new Odd.fromJson(json['fibonacci']) : null;
    partition =
        json['partition'] != null ? new Odd.fromJson(json['partition']) : null;
    pell = json['pell'] != null ? new Odd.fromJson(json['pell']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.prime != null) {
      data['prime'] = this.prime!.toJson();
    }
    if (this.perfect != null) {
      data['perfect'] = this.perfect!.toJson();
    }
    if (this.mersenne != null) {
      data['mersenne'] = this.mersenne!.toJson();
    }
    if (this.fermat != null) {
      data['fermat'] = this.fermat!.toJson();
    }
    if (this.fibonacci != null) {
      data['fibonacci'] = this.fibonacci!.toJson();
    }
    if (this.partition != null) {
      data['partition'] = this.partition!.toJson();
    }
    if (this.pell != null) {
      data['pell'] = this.pell!.toJson();
    }
    return data;
  }
}

class Recreational {
  Nominal? reverse;
  Digitssum? digitssum;
  Digitssum? noofdigits;

  Recreational({this.reverse, this.digitssum, this.noofdigits});

  Recreational.fromJson(Map<String, dynamic> json) {
    reverse =
        json['reverse'] != null ? new Nominal.fromJson(json['reverse']) : null;
    digitssum = json['digitssum'] != null
        ? new Digitssum.fromJson(json['digitssum'])
        : null;
    noofdigits = json['noofdigits'] != null
        ? new Digitssum.fromJson(json['noofdigits'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.reverse != null) {
      data['reverse'] = this.reverse!.toJson();
    }
    if (this.digitssum != null) {
      data['digitssum'] = this.digitssum!.toJson();
    }
    if (this.noofdigits != null) {
      data['noofdigits'] = this.noofdigits!.toJson();
    }
    return data;
  }
}

class Digitssum {
  String? name;
  String? description;
  int? value;
  int? display;

  Digitssum({this.name, this.description, this.value, this.display});

  Digitssum.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    value = json['value'];
    display = json['display'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['value'] = this.value;
    data['display'] = this.display;
    return data;
  }
}
