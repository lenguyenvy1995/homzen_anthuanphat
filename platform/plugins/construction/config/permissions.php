<?php

return [
    [
        'name' => 'Constructions',
        'flag' => 'construction.index',
    ],
    [
        'name' => 'Create',
        'flag' => 'construction.create',
        'parent_flag' => 'construction.index',
    ],
    [
        'name' => 'Edit',
        'flag' => 'construction.edit',
        'parent_flag' => 'construction.index',
    ],
    [
        'name' => 'Delete',
        'flag' => 'construction.destroy',
        'parent_flag' => 'construction.index',
    ],
];
