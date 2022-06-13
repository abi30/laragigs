<?php

namespace App\Http\Controllers;

// use Whoops\Run;
// use Clockwork\Request\Log;
// use Facade\FlareClient\View;
// use Illuminate\Support\Facades\Redis;
// use phpDocumentor\Reflection\PseudoTypes\List_ as PseudoTypesList_;
// use PhpParser\Node\Expr\List_;

use App\Models\Listing;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class ListingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // dd(Listing::latest()->filter(request(['tag', 'search']))->paginate(2));
        //(Request $request) or (request())
        //dd(request()->tag) or request('tag')
        return view('listings.index', [
            // all()  and latest()->get() are same 
            // 'listings' => Listing::all()
            // 'listings' => Listing::latest()->filter(request(['tag', 'search']))->get()
            // 'listings' => Listing::latest()->filter(request(['tag', 'search']))->simplePaginate(2)
            'listings' => Listing::latest()->filter(request(['tag', 'search']))->paginate(4)

        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('listings.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request->file('logo')->store());
        $formField = $request->validate([
            "title" => 'required',
            "company" => ['required', Rule::unique('listings', 'company')],
            "location" => 'required',
            "email" => ['required', 'email'],
            "website" => 'required|url',
            "tags" => 'required',
            // "logo" =>  'required|nullable',
            // "logo" =>  'required',
            // "logo" =>  'nullable',
            "description" => 'required'
        ]);

        if ($request->hasFile('logo')) {
            $formField['logo'] = $request->file('logo')->store('logos', 'public');
        }

        Listing::create($formField);
        // waiting for the next 
        return redirect('/')->with('message', 'Listing created successfully!.');
    }


    public function show(Listing $listing)
    {
        return view('listings.show', [
            'listing' => $listing
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Listing $listing)
    {
        // dd($listing->title);
        // return View('listing.edit', compact('listing'));
        return View('listings.edit', ['listing' => $listing]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Listing $listing)
    {

        $formField = $request->validate([
            "title" => 'required',
            "company" => ['required'],
            "location" => 'required',
            "email" => ['required', 'email'],
            "website" => 'required|url',
            "tags" => 'required',
            "description" => 'required'
        ]);

        if ($request->hasFile('logo')) {
            $formField['logo'] = $request->file('logo')->store('logos', 'public');
        }

        $listing->update($formField);
        // waiting for the next 
        // return redirect('/')->with('message', 'Listing created successfully!.');
        return back()->with('message', 'Listing updated successfully!.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Listing $listing)
    {
        $listing->delete();
        return redirect('/')->with('message', 'Listing deleted successfully!.');
    }
}