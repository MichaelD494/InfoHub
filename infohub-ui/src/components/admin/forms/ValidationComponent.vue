<template>
<div id="main-content">
        <div class="container-fluid">
            <div class="block-header">
                <bread-crumb></bread-crumb>
            </div>
            <div class="row clearfix">
                <div class="col-md-12">
                    <div class="card">
                        <ValidationObserver v-slot="{ passes }">
                            <div class="header">
                                <h2>Basic Validation</h2>
                            </div>
                            <div class="body">
                                <form @submit.prevent="passes(basicSubmit)" id="basic-form">
                                    <ValidationProvider name="name" rules="required" v-slot="{ errors,classes }">
                                    <div class="form-group">
                                        <label>Text Input</label>
                                        <input v-model="basic.name" type="text" class="form-control" :class="classes">
                                        <span :class="{'text-danger': errors.length}">{{ errors[0] }}</span>
                                    </div>
                                    </ValidationProvider>

                                    <ValidationProvider name="email" rules="required|email" v-slot="{ errors,classes}">
                                    <div class="form-group">
                                        <label>Email Input</label>
                                        <input v-model="basic.email" type="email" class="form-control" :class="classes">
                                        <span :class="{'text-danger': errors.length}">{{ errors[0] }}</span>
                                    </div>
                                    </ValidationProvider>

                                    <ValidationProvider name="textarea" rules="required" v-slot="{ errors,classes}">
                                    <div class="form-group">
                                        <label>Text Area</label>
                                        <textarea class="form-control" v-model="basic.textarea" :class="classes"></textarea>
                                        <span :class="{'text-danger': errors.length}">{{ errors[0] }}</span>
                                    </div>
                                    </ValidationProvider>
                                    <div class="form-group">
                                        <label>Checkbox</label>
                                        <br/>
                                        <label class="fancy-checkbox">
                                            <input type="checkbox" name="checkbox">
                                            <span>Option 1</span>
                                        </label>
                                        <label class="fancy-checkbox">
                                            <input type="checkbox" name="checkbox">
                                            <span>Option 2</span>
                                        </label>
                                        <label class="fancy-checkbox">
                                            <input type="checkbox" name="checkbox">
                                            <span>Option 3</span>
                                        </label>
                                        <p id="error-checkbox"></p>
                                    </div>
                                    <div class="form-group">
                                        <label>Radio Button</label>
                                        <br />
                                        <label class="fancy-radio">
                                            <input type="radio" name="gender" value="male">
                                            <span><i></i>Male</span>
                                        </label>
                                        <label class="fancy-radio">
                                            <input type="radio" name="gender" value="female">
                                            <span><i></i>Female</span>
                                        </label>
                                        <p id="error-radio"></p>
                                    </div>
                                    <div class="form-group">
                                        <label for="food">Multiselect</label>
                                        <br/>
                                        <multiselect
                                            v-model="selected"
                                            :multiple="true"
                                            :options="options">
                                        </multiselect>
                                        <p id="error-multiselect"></p>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Validate</button>
                                </form>
                            </div>
                        </ValidationObserver>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="card">
                         <ValidationObserver v-slot="{ passes }">
                            <div class="header">
                                <h2>Advanced Validation</h2>
                            </div>
                            <div class="body">
                                <form @submit.prevent="passes(advancedSubmit)" class="form">
                                    <ValidationProvider name="input1" rules="required|min:8" v-slot="{ errors,classes}">
                                    <div class="form-group">
                                        <label for="text-input1">Min. 8 Characters</label>
                                        <input type="text"  class="form-control" v-model="advanced.input1" :class="classes">
                                        <span :class="{'text-danger': errors.length}">{{ errors[0] }}</span>
                                    </div>
                                    </ValidationProvider>

                                    <ValidationProvider name="input2" rules="required|alpha|min:5|max:10" v-slot="{ errors,classes}">
                                    <div class="form-group">
                                        <label for="text-input2">Between 5-10 Characters</label>
                                        <input type="text"  class="form-control" v-model="advanced.input2" :class="classes">
                                        <span :class="{'text-danger': errors.length}">{{ errors[0] }}</span>
                                    </div>
                                    </ValidationProvider>

                                    <ValidationProvider name="input3" rules="required|min_value:5|numeric" v-slot="{ errors,classes}">
                                    <div class="form-group">
                                        <label for="text-input3">Min. Number ( >= 5 )</label>
                                        <input type="text"  class="form-control" v-model="advanced.input3" :class="classes">
                                        <span :class="{'text-danger': errors.length}">{{ errors[0] }}</span>
                                    </div>
                                    </ValidationProvider>
                                    <ValidationProvider name="input4" rules="required|between:20,30|numeric" v-slot="{ errors,classes}">
                                    <div class="form-group">
                                        <label for="text-input4">Between 20-30</label>
                                        <input type="text"  class="form-control" v-model="advanced.input4" :class="classes">
                                        <span :class="{'text-danger': errors.length}">{{ errors[0] }}</span>
                                    </div>
                                    </ValidationProvider>
                                    <div class="form-group">
                                        <label>Select Min. 2 Options</label>
                                        <br />
                                        <label class="control-inline fancy-checkbox">
                                            <input type="checkbox" name="checkbox2">
                                            <span>Option 1</span>
                                        </label>
                                        <label class="control-inline fancy-checkbox">
                                            <input type="checkbox" name="checkbox2">
                                            <span>Option 2</span>
                                        </label>
                                        <label class="control-inline fancy-checkbox">
                                            <input type="checkbox" name="checkbox2">
                                            <span>Option 3</span>
                                        </label>
                                        <p id="error-checkbox2"></p>
                                    </div>
                                    <div class="form-group">
                                        <label>Select Between 1-2 Options</label>
                                        <br />
                                        <label class="control-inline fancy-checkbox">
                                            <input type="checkbox" name="checkbox3" >
                                            <span>Option 1</span>
                                        </label>
                                        <label class="control-inline fancy-checkbox">
                                            <input type="checkbox" name="checkbox3">
                                            <span>Option 2</span>
                                        </label>
                                        <label class="control-inline fancy-checkbox">
                                            <input type="checkbox" name="checkbox3">
                                            <span>Option 3</span>
                                        </label>
                                        <p id="error-checkbox3"></p>
                                    </div>
                                    <br/>
                                    <button type="submit" class="btn btn-primary">Validate</button>
                                </form>
                            </div>
                        </ValidationObserver>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import { ValidationObserver, ValidationProvider } from "vee-validate";
import Multiselect from 'vue-multiselect'
import BreadCrumb from '@/components/BreadCrumb'

export default {
  name: "ValidationComponent",
  components: {
    ValidationObserver,
    ValidationProvider,
    Multiselect,
    BreadCrumb
  },
  data: () => ({
    selected: null,
    options: ['Cheese', 'Tomatoes', 'Mozzarella', 'Mushrooms', 'Pepperoni','Onions'],
    advanced: {
        input1: "",
        input2: "",
        input3: "",
        input4: "",
    },
    basic: {
      email: "",
      textarea: "",
      name: ""
    }
  }),
  methods: {
    advancedSubmit() {
      console.log("Submitting to server!");
      // You could also validate manually like this.
      // this.$refs.loginForm.validate(); // this is 'async' use `await` or `then`.
    },
    basicSubmit() {
      console.log("Submitting to server!");
      // You could also validate manually like this.
      // this.$refs.basicForm.validate(); // this is 'async' use `await` or `then`.
    }
  }
};
</script>
<style src="vue-multiselect/dist/vue-multiselect.min.css">
.field {
    margin-bottom: 10px;
}

.form {
    margin-top: 20px;
}

span {
    display: block;
    margin-top: 3px;
   
}
</style>
