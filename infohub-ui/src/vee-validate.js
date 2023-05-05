import { extend, localize ,configure} from "vee-validate";
import { min, required, email ,between, min_value, numeric,alpha, max} from "vee-validate/dist/rules";
import en from "vee-validate/dist/locale/en.json";

// Install rules
extend("required", required);
extend("min", min);
extend("email", email);
extend("between", between);
extend("min_value", min_value);
extend("numeric", numeric);
extend("alpha", alpha);
extend("max", max);

// Install classes
configure({
  classes: {
    invalid: 'is-invalid'
  }
})

// Install messages
localize({
  en
});