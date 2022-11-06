    <template>
        <div class="card card-info">
            <div class="card-header">
                <h4 class="text-danger text-bold">Manage Category
                    <router-link to="/add-category" class="btn btn-danger btn-sm float-right">
                        <i class="far fa-hand-point-left"> </i>Add Category
                    </router-link>
                </h4>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table id="example1" class="table table-bordered table-striped table-hover">
                    <thead class="text-center">
                        <tr>
                            <th>Name2</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody class="text-center">
                        <tr>
                            <td>Trident</td>
                            <td>Internet Explorer 4.0</td>
                            <td><span class="badge bg-danger"> Win 95+</span></td>

                        </tr>
                        <tr>
                            <td>Trident</td>
                            <td>Internet Explorer 5.0</td>
                            <td><span class="badge bg-danger"> Win 95+</span></td>
                        </tr>
                        <tr>
                            <td>Trident</td>
                            <td>Internet Explorer 5.5</td>
                            <td><span class="badge bg-danger"> Win 95+</span></td>

                        </tr>
                        <tr>
                            <td>Trident</td>
                            <td>Internet Explorer 6</td>
                            <td><span class="badge bg-danger"> Win 95+</span></td>

                        </tr>
                    </tbody>
                    <tfoot class="text-center">
                        <tr>
                            <th>Rendering engine</th>
                            <th>Browser</th>
                            <th>Platform(s)</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <!-- /.card-body -->
        </div>
    </template>

    <script>
        export default {
            name: "manage"
        }
    </script>

    <style scoped>

    </style>
