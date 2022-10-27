<div class="modal fade bd-example-modal-lg" id="add_book" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><b>Add Book</b></h5>
         <input type="hidden" name="" id="student_id" value="<?=$name;?>">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <div class="row">
           <div class="col-3">
              <label>Accession No:</label> <input type="text" name="acquisition_no_add" id="acquisition_no_add" class="form-control" autocomplete="off">
            </div>
          <div class="col-3">
              <label>Book Title: &nbsp;&nbsp;</label> <input type="text" name="book_title_add" id="book_title_add" class="form-control" autocomplete="off">
            </div>
            <div class="col-3">
              <label>Description:</label> <input type="text" name="description_add" id="description_add" class="form-control" autocomplete="off">
            </div>
            <div class="col-3">
              <label>Author:</label> <input type="text" name="author_add" id="author_add" class="form-control" autocomplete="off">
            </div>  
                
        </div>

        <div class="row">  
            <div class="col-4">
              <label>Date Publish: &nbsp;&nbsp;</label> 
              <select name="date_publish_add" id="date_publish_add" class="form-control">
                 <?php
                $base_year = $server_year + 0;
                $year_range = $base_year - 300;
                for($base_year;$base_year >= $year_range; $base_year--){
                  echo '<option>'.$base_year.'</option>';
                }
              ?>
              </select>
            </div>    
            <div class="col-4">
              <label>Category:</label> <input type="text" name="category_add" id="category_add" class="form-control" autocomplete="off">
            </div>
            <div class="col-4">
              <label>Type of Book:</label> <input type="text" name="book_type_add" id="book_type_add" class="form-control" autocomplete="off">
            </div>
                
      </div>

       <div class="row">  
            <div class="col-4">
              <label>Quantity of Book:</label> <input type="number" name="qty_book_add" id="qty_book_add" class="form-control" autocomplete="off" onkeypress="return event.charCode >= 48" min="1">
            </div>     
            <div class="col-4">
              <label>Location:</label> 
              <select name="location_add" id="location_add" class="form-control">
                <option value="">Select Location</option>
                <option value="LEFT">LEFT</option>
                <option value="CENTER">CENTER</option>
                <option value="RIGHT">RIGHT</option>
              </select>
            </div>
            <div class="col-4">
              <label>Shelf:</label>
               <select name="shelf_adds" id="shelf_adds" class="form-control">
                <option value="">Select Shelf</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
              </select>
            </div>          
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <a href="#" class="btn btn-danger" onclick="register_book()">Register Book</a>
      </div>
    </div>
  </div>
</div>