

    require('./bootstrap');
    //vue js
    window.Vue = require('vue').default;
    //vue from
    import Vue from 'vue';
     window.Form = Form;
      //Vue.use(Form);
     import {Form} from 'vform'
    //  Vue.component(HasError.name, HasError)
    //vue Router
    import VueRouter from 'vue-router';
    Vue.use(VueRouter);

    // window.Toast = Toast;
    import toastr from  'toastr';
    window.toastr = toastr;

    import {routes} from './routes/routes'
    const router    =   new VueRouter({
        routes,
        mode:'history',
    });

    import storeData from './store/store';
    import Vuex from 'vuex'
    Vue.use(Vuex)
    const store = new Vuex.Store({
        storeData
    });

    Vue.component('home', require('./components/backend/home').default);
    const app = new Vue({
        el: '#app',
        router,
        store
    });
