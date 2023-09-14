<?php include('header.php');?>
<div class="container my-5 p-5 shadow-lg contactbg">
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="row g-0">
                <div class="col-md-6">
                    <img src="images/item6.jpg" class="w-100">
                </div>
                <div class="col-md-6 bg-white px-4 py-3">
                    <form action="#" method="post">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Name</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                        <div id="emailHelp" class="form-text">Fill you name here.</div>
                        <label for="exampleInputEmail1" class="form-label">Email</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                        <div id="emailHelp" class="form-text">Fill your email here.</div>
                        <label for="exampleInputEmail1" class="form-label">Phone</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                        <div id="emailHelp" class="form-text">Fill your phone here.</div>
                        <label for="exampleInputEmail1" class="form-label">Write your message here.</label>
                        <textarea name="" id="" class="form-control" cols="30" rows="3"></textarea> <br>
                        <input type="checkbox" name="" id=""> 
                        <a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal" > Privacy policy....</a>
                    </form>
                    </div>
                    <input type="submit" value="Send" class="btn btn-outline-primary w-100">
                        
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <h3>Privacy Policy</h3>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi autem maiores quae itaque aut exercitationem assumenda, excepturi quis nihil debitis, distinctio cumque rerum dolorum. Temporibus illo repudiandae a esse quo?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>


<?php include('footer.php');?>