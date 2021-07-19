<?php

namespace Tests\Unit;

use Tests\TestCase;
use App\Models\Employee;
use Illuminate\Database\Eloquent\Collection;

class EmployeeTest extends TestCase
{
    /**
     * A basic unit test example.
     *
     * @return void
     */
    public function test_a_employee_post()
    {
        $employee=new Employee;
        $this->assertInstanceOf(Collection::class, $employee->name);
    }
}
