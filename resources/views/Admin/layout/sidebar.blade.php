<div class="sidebar" id="sidebar">
<div class="sidebar-inner slimscroll">
    
    <div id="sidebar-menu" class="sidebar-menu">
        
        <ul>

            <li class="menu-title">Main</li>

            <li class=" ">
                <a href="{{ url('/dashboard') }}">
                    <i class="fa fa-dashboard"></i> 
                    <span>Dashboard</span>
                </a>
            </li>  
            
            <li>
                <a href="{{ route('emp.list') }}">
                    <i class="fa fa-user-md"></i> 
                    <span>Employee</span>
                </a>
            </li> 
            <li>
                <a href=" http://localhost/kmac_hrms_admin/">
                     <i class="fa fa-cog"></i> 
                    <span>Hrms</span>
                </a>
            </li>
            <li class="submenu">
                <a href="#"><i class="fa fa-user"></i> <span> Inventories </span> <span class="menu-arrow"></span></a>
                <ul style="display: none;">
                    <li><a href="{{url('assets')}}">Assets</a></li>
                    <li><a href="{{ route('stock.inv') }}">Inventory List</a></li>
                   
                </ul>
            </li>
 
    </div>
</div>
</div>