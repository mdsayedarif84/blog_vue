    <template>
        <div class="card card-info">
            <div class="card-header ">
                <h4 class="text-danger text-bold">Add Category
                    <router-link to="/manage-categories" class="btn btn-danger btn-sm float-right">
                        <i class="far fa-hand-point-right"> </i>Manage Category
                    </router-link>
                </h4>
            </div>
            <!-- form start -->
            <form class="form-horizontal" @submit.prevent="addCategory">
                <div class="card-body">
                    <div class="form-group row">
                        <label for="name" class="col-sm-4 col-form-label text-right">Category Name</label>
                        <div class="col-sm-8">
                            <input type="text" name="name" v-model="form.name" class="form-control" id="name" placeholder="Enter Category Name">
                            <div v-if="form.errors.has('name')" v-html="form.errors.get('name')" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="status" class="col-sm-4 col-form-label text-right">Status</label>
                        <div class="col-sm-8">
                            <div class="form-check form-check-inline">
                                <input v-model="form.status" class="form-check-input" type="radio" id="active" value="1">
                                <label class="form-check-label" for="active">Active</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input v-model="form.status" class="form-check-input" type="radio" id="inactive" value="0">
                                <label class="form-check-label" for="inactive">Inactive</label>
                            </div>
                            <div v-if="form.errors.has('name')" v-html="form.errors.get('name')" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="offset-sm-4 col-sm-8">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck2">
                                <label class="form-check-label" for="exampleCheck2">Remember me</label>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                    <button type="submit" :disabled="form.busy" class="btn btn-outline-success offset-sm-4">Save Data</button>
                    <button type="reset" class="btn btn-outline-danger ">Reset</button>
                </div>
                <!-- /.card-footer -->
            </form>
        </div>
            <!-- /.card -->
    </template>
    <script src="{{ asset('js/jeQuery.js') }}"></script>
    <script>
        export default {
            name:"AddCategory",
            data: function () {
                return {
                    form: new Form({
                        name: null,
                        status: null,
                    }),
                }
            },
            methods: {
                 addCategory () {
                    this.form.post('/add-category')
                    .then(function(data){
                        console.log(data);
                    })
                }
            }
        }
    </script>
    

    <style scoped>

    </style>
