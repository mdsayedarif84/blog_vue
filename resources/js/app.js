

    require('./bootstrap');
    //vue js
    window.Vue = require('vue').default;
    //vue from
    window.form = Form;
     import {Form, HasError, AlertError, AlertErrors, AlertSuccess} from 'vform/src/components/bootstrap5'
    Vue.component(HasError.name, HasError)
    Vue.component(AlertError.name, AlertError)
    Vue.component(AlertErrors.name, AlertErrors)
    Vue.component(AlertSuccess.name, AlertSuccess)
    //vue Router
    import VueRouter from 'vue-router';
    Vue.use(VueRouter);

    import {routes} from './routes/routes'
    const router    =   new VueRouter({
        routes,
        mode:'history',
    });

    Vue.component('home', require('./components/backend/home').default);
    const app = new Vue({
        el: '#app',
        router
    });
