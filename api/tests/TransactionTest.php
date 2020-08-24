<?php

use Laravel\Lumen\Testing\DatabaseMigrations;
use Laravel\Lumen\Testing\DatabaseTransactions;

class TransactionTest extends TestCase
{
    /**
     * Test create transaction
     *
     * @return void
     */
    public function testCreateTransaction()
    {
        $payload = [
            "value" => 100.00,
            "payer" => 3,
            "payee" => 1
        ];

        $response = $this->call('POST', '/transaction', $payload);

        $this->assertEquals(201, $response->status());
    }

}
