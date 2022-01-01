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
            <form class="form-horizontal">
                <div class="card-body">
                    <div class="form-group row">
                        <label for="name" class="col-sm-2 col-form-label">Category Name</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="name" placeholder="Enter Category Name">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Status</label>
                        <div class="col-sm-10">

                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="offset-sm-2 col-sm-10">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck2">
                                <label class="form-check-label" for="exampleCheck2">Remember me</label>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                    <button type="submit" class="btn btn-info">Sign in</button>
                    <button type="submit" class="btn btn-default float-right">Cancel</button>
                </div>
                <!-- /.card-footer -->
            </form>
        </div>
            <!-- /.card -->
    </template>

    <script>
    export default {
        name: "add-category",
        data:function (){
            return{
                form: new Form({
                    name:null,
                    status:1
                })
            }
        }
        // data: () => (  {
        //     form: new Form ({
        //         name: '',
        //         status: 1,
        //     })
        // }),
    }
    </script>

    <style scoped>

    </style>
