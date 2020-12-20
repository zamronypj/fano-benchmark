(*!------------------------------------------------------------
 * [[APP_NAME]] ([[APP_URL]])
 *
 * @link      [[APP_REPOSITORY_URL]]
 * @copyright Copyright (c) [[COPYRIGHT_YEAR]] [[COPYRIGHT_HOLDER]]
 * @license   [[LICENSE_URL]] ([[LICENSE]])
 *------------------------------------------------------------- *)
unit UserControllerFactory;

interface

{$MODE OBJFPC}
{$H+}

uses
    fano;

type

    (*!-----------------------------------------------
     * Factory for controller TUserController
     *
     * @author [[AUTHOR_NAME]] <[[AUTHOR_EMAIL]]>
     *------------------------------------------------*)
    TUserControllerFactory = class(TFactory, IDependencyFactory)
    public
        function build(const container : IDependencyContainer) : IDependency; override;
    end;

implementation

uses
    sysutils,

    {*! -------------------------------
        unit interfaces
    ----------------------------------- *}
    UserController;

    function TUserControllerFactory.build(const container : IDependencyContainer) : IDependency;
    begin
        //build your controller instance here.
        //container will gives you access to all registered services
        result := TUserController.create();
    end;
end.
