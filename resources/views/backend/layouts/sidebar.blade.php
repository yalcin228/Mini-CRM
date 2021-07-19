<nav class="mt-2">
  <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
   
    <li class="nav-item">
      <a href="{{route('admin.index')}}" class="nav-link">
        <i class="nav-icon fas fa-home"></i>
        <p>
          {{__("language.menuhome")}}  
        </p>
      </a>
    </li>

    <li class="nav-item">
      <a href="{{route('company.index')}}" class="nav-link">
        <i class="nav-icon fas fa-building"></i>
        <p>
          {{__("language.menucompany")}}   
        </p>
      </a>
    </li>
    <li class="nav-item">
      <a href="{{route('employee.index')}}" class="nav-link">
        <i class="nav-icon fas fa-users"></i>
        <p>
          {{__("language.menuemployee")}}    
        </p>
      </a>
    </li>

    <li class="nav-item">
      <a href="{{route('admin.logout')}}" class="nav-link">
        <i class="nav-icon fas fa-sign-out-alt"></i>
        <p>
          {{__("language.logout")}}  
        </p>
      </a>
    </li>
    
 
    
    
    
  
   
 
    
  </ul>
</nav>